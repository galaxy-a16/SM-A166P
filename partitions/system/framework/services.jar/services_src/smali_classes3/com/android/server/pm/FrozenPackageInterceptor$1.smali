.class public Lcom/android/server/pm/FrozenPackageInterceptor$1;
.super Ljava/lang/Object;
.source "FrozenPackageInterceptor.java"

# interfaces
.implements Lcom/android/server/wm/ActivityInterceptorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/FrozenPackageInterceptor;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/FrozenPackageInterceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/FrozenPackageInterceptor$1;->this$0:Lcom/android/server/pm/FrozenPackageInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptActivityLaunch(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/FrozenPackageInterceptor$1;->this$0:Lcom/android/server/pm/FrozenPackageInterceptor;

    invoke-static {v2}, Lcom/android/server/pm/FrozenPackageInterceptor;->-$$Nest$fgetmPMInternal(Lcom/android/server/pm/FrozenPackageInterceptor;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCallingUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getUserId()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/FrozenPackageInterceptor$1;->this$0:Lcom/android/server/pm/FrozenPackageInterceptor;

    invoke-static {p0, v0}, Lcom/android/server/pm/FrozenPackageInterceptor;->-$$Nest$misPackageBeingInstalled(Lcom/android/server/pm/FrozenPackageInterceptor;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getUserId()I

    move-result p0

    invoke-static {p0, v0}, Lcom/android/internal/app/FrozenAppActivity;->createIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;-><init>(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method
