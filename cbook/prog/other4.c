#include<stdio.h>
#include <dlfcn.h>`\
int main() {
  void *handle;
  double (*fun)(double);
  
  double value;

  handle = dlopen("./secret.so", RTLD_LAZY);
  if(!handle) {
    printf("Failed to load: %s\n",dlerror());
    dlclose(handle);
    return 1;
  }

  fun = dlsym(handle, "f");
  if(!fun) {
    printf("Failed to load f: %s\n",dlerror());
    dlclose(handle);
    return 1;
  }    
  
  printf("Please supply a number: ");
  scanf("%lf",&value);
  printf("The answer is %lf\n",fun(value));
}
