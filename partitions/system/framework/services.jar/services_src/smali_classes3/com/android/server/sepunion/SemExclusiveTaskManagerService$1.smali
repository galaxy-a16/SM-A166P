.class public Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SemExclusiveTaskManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    .line 132
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 133
    invoke-static {}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserSwitchedReceiver : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$muserSwitch(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;I)V

    return-void
.end method
