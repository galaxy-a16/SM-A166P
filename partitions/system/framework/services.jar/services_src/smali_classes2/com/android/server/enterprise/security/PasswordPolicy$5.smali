.class public Lcom/android/server/enterprise/security/PasswordPolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "PasswordPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderClearCallingIdentity()J

    move-result-wide v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const-string v4, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$menforcePwdChangeIfNeededOnTimeout(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto/16 :goto_2

    :cond_0
    const-string v4, "android.intent.action.USER_STARTED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    const-string v6, "android.intent.extra.user_handle"

    if-eqz v4, :cond_1

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_7

    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$menforcePwdChangeIfNeededOnStart(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto/16 :goto_2

    :cond_1
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_7

    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$menforcePwdChangeIfNeededOnSwitch(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto/16 :goto_2

    :cond_2
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmTelManager(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$menforcePwdChangeIfNeededAfterCall(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto :goto_2

    :cond_3
    const-string v3, "com.samsung.android.knox.intent.action.NOTIFICATION_PASSWORD_EXPIRED_INTERNAL"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Received ACTION_PASSWORD_EXPIRING_NOTIFICATION_INTERNAL intent"

    const-string v3, "PasswordPolicy"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "expiration"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, p1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long v4, p1, v4

    if-eqz v4, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-lez v4, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "Password expired already so launching password screen"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmPersonaManagerAdapter(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    const-string p2, "com.android.settings"

    invoke-interface {p1, p2, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "forceStopPackage failed"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$menforcePwdChangeForUser(Lcom/android/server/enterprise/security/PasswordPolicy;II)Z

    goto :goto_2

    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In grace period or failed to get "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    return-void
.end method
