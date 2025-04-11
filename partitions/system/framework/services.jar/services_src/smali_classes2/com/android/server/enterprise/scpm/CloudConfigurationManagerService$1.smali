.class public Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "CloudConfigurationManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mtryRegister(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.scpm.policy.CLEAR_DATA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "CloudConfigurationManagerService"

    if-eqz p1, :cond_1

    const-string/jumbo p1, "receive ACTION_SCPM_POLICY_CLEAR_DATA intent"

    invoke-static {v0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1$1;

    invoke-direct {p2, p0}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1$1;-><init>(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;)V

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.samsung.android.scpm.policy.UPDATE.knox-sdk-mam-configuration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "receive intent: knox-sdk-mam-configuration"

    invoke-static {v0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    const-string p1, "KNOX_CUSTOM"

    const-string/jumbo p2, "mamPackageName"

    const-string v0, "knox-sdk-mam-configuration"

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mupdateConfiguration(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.scpm.policy.UPDATE.knox-remotecontrol"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "receive intent: knox-remotecontrol"

    invoke-static {v0, p1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$1;->this$0:Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;

    const-string p1, "RESTRICTION"

    const-string p2, "allowRemoteControlAllowList"

    const-string v0, "knox-remotecontrol"

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;->-$$Nest$mupdateConfiguration(Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
