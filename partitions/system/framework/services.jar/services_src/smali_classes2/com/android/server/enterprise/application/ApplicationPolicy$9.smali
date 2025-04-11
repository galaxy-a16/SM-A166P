.class public Lcom/android/server/enterprise/application/ApplicationPolicy$9;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    .line 7812
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$9;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "ApplicationPolicy"

    const-string p2, "ACTION_LOCKED_BOOT_COMPLETED"

    .line 7814
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7815
    iget-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$9;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$menablePreventStart(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 7818
    iget-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$9;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$fgetmProcessStats(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/application/ProcessStats;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/enterprise/application/ProcessStats;->init()V

    .line 7819
    iget-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$9;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object p1, p1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string p2, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardBlackList"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 7822
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$9;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string p1, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardWhiteList"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
