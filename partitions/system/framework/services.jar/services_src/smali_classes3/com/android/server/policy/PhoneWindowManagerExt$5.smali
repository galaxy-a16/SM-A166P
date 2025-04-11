.class public Lcom/android/server/policy/PhoneWindowManagerExt$5;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManagerExt.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 0

    .line 3297
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$5;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "com.sec.android.app.secsetupwizard.GLOBAL_ACTION"

    .line 3300
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$5;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 3301
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "PhoneWindowManagerExt"

    const-string/jumbo p2, "secSetupwizard POWER_OFF_GLOBAL_ACTION received."

    .line 3302
    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$5;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    :cond_0
    return-void
.end method
