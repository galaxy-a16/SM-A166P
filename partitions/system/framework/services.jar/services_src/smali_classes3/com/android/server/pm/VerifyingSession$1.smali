.class public Lcom/android/server/pm/VerifyingSession$1;
.super Landroid/content/BroadcastReceiver;
.source "VerifyingSession.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/VerifyingSession;

.field public final synthetic val$verificationId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VerifyingSession;I)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/android/server/pm/VerifyingSession$1;->this$0:Lcom/android/server/pm/VerifyingSession;

    iput p2, p0, Lcom/android/server/pm/VerifyingSession$1;->val$verificationId:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 352
    iget-object p1, p0, Lcom/android/server/pm/VerifyingSession$1;->this$0:Lcom/android/server/pm/VerifyingSession;

    invoke-static {p1}, Lcom/android/server/pm/VerifyingSession;->-$$Nest$fgetmPm(Lcom/android/server/pm/VerifyingSession;)Lcom/android/server/pm/PackageManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x1a

    .line 353
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 354
    iget p2, p0, Lcom/android/server/pm/VerifyingSession$1;->val$verificationId:I

    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 355
    iget-object p2, p0, Lcom/android/server/pm/VerifyingSession$1;->this$0:Lcom/android/server/pm/VerifyingSession;

    invoke-static {p2}, Lcom/android/server/pm/VerifyingSession;->-$$Nest$fgetmPm(Lcom/android/server/pm/VerifyingSession;)Lcom/android/server/pm/PackageManagerService;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/pm/VerifyingSession$1;->this$0:Lcom/android/server/pm/VerifyingSession;

    invoke-static {p0}, Lcom/android/server/pm/VerifyingSession;->-$$Nest$mgetIntegrityVerificationTimeout(Lcom/android/server/pm/VerifyingSession;)J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
