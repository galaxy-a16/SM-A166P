.class public Lcom/android/server/am/AnrHelper$1;
.super Ljava/lang/Thread;
.source "AnrHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AnrHelper;

.field public final synthetic val$aInfo:Landroid/content/pm/ApplicationInfo;

.field public final synthetic val$anrProcess:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AnrHelper;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/server/am/AnrHelper$1;->this$0:Lcom/android/server/am/AnrHelper;

    iput-object p3, p0, Lcom/android/server/am/AnrHelper$1;->val$aInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/android/server/am/AnrHelper$1;->val$anrProcess:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$aInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$aInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.sdhms.action.CRASH_ANR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.sdhms"

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$aInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$anrProcess:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$anrProcess:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string v2, "anr"

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object p0, p0, Lcom/android/server/am/AnrHelper$1;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {p0}, Lcom/android/server/am/AnrHelper;->-$$Nest$fgetmService(Lcom/android/server/am/AnrHelper;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "com.samsung.permission.WRITE_SDHMS_DATA"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
