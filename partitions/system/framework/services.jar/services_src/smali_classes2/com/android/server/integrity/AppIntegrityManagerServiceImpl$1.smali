.class public Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "AppIntegrityManagerServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;


# direct methods
.method public static synthetic $r8$lambda$KbtFPK7ZEQR5n7xan1vOM2ltAHk(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;->lambda$onReceive$0(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;->this$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Intent;)V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;->this$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    invoke-static {p0, p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->-$$Nest$mhandleIntegrityVerification(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;->this$0:Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/integrity/AppIntegrityManagerServiceImpl$1;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
