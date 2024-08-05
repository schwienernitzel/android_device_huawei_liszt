/*
 * Copyright (C) 2024 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <dlfcn.h>
#include <string.h>
#include <errno.h>
#include <limits.h>
#include <utils/Log.h>

int main(int argc, char *argv[])
{
    const char *path;
    int status = -EINVAL;
    void *handle = NULL;

    if(argc <= 1) {
	printf("Please specify a module to load!\n");
	return status;
    }

    path = argv[1];

    handle = dlopen(path, RTLD_NOW);
    if (handle == NULL) {
        char const *err_str = dlerror();
	printf("load: module=%s\n%s\n", path, err_str?err_str:"unknown");
        status = -EINVAL;
    } else {
		printf("load: module=%s %s\n", path,"Success!");
    }
	return status;
}
