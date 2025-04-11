.class Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;
.super Ljava/lang/Object;
.source "KnoxGuardSeService.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mClientName:Ljava/lang/String;

.field private mCustomAppName:Ljava/lang/String;

.field private mCustomAppPackageName:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSkipPin:Z

.field private mSkipSupport:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 0

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    invoke-virtual {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setClientName(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0, p4}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setMessage(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p0, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p0, p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setEmailAddress(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p0, p5}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setSkipPin(Z)V

    .line 875
    invoke-virtual {p0, p6}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setSkipSupport(Z)V

    .line 876
    invoke-virtual {p0, p7}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 3

    .line 928
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "customer_package_name"

    .line 929
    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "customer_app_name"

    .line 930
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 0

    .line 880
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mClientName:Ljava/lang/String;

    return-object p0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 0

    .line 904
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mEmailAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 888
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 0

    .line 896
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getSkipPin()Z
    .locals 0

    .line 920
    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipPin:Z

    return p0
.end method

.method public getSkipSupport()Z
    .locals 0

    .line 912
    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipSupport:Z

    return p0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 936
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    .line 937
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    return-void

    :cond_0
    const-string v1, "customer_package_name"

    .line 941
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 943
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    goto :goto_0

    .line 945
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    :goto_0
    const-string v1, "customer_app_name"

    .line 947
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 949
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    goto :goto_1

    .line 951
    :cond_2
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public setClientName(Ljava/lang/String;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mClientName:Ljava/lang/String;

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setSkipPin(Z)V
    .locals 0

    .line 924
    iput-boolean p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipPin:Z

    return-void
.end method

.method public setSkipSupport(Z)V
    .locals 0

    .line 916
    iput-boolean p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipSupport:Z

    return-void
.end method
