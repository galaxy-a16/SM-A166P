.class public Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseLicenseService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;


# direct methods
.method public static synthetic $r8$lambda$Dett7FqhMZvVs3obQcuSWPalITc(Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->lambda$onReceive$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/os/Bundle;)V
    .locals 2

    .line 194
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    const-string/jumbo v0, "packageRemovedInternal"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->-$$Nest$mcallLicenseAgent(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_3

    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 185
    iget-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-static {p2, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->-$$Nest$misPackageInstalled(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 187
    iget-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getInstanceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 188
    iget-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetLicenseByAdmin(Ljava/lang/String;)Z

    .line 191
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "packageName"

    .line 192
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;Landroid/os/Bundle;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "EnterpriseLicenseService"

    const-string p1, "intent or getData are null. Skip."

    .line 181
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
