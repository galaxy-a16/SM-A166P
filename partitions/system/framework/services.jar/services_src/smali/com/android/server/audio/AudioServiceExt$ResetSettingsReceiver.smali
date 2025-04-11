.class public Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioServiceExt.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioServiceExt;


# direct methods
.method public static synthetic $r8$lambda$bi3h_O65dWJfwxwl8ey1iKS0j0E(Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioServiceExt;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioServiceExt;Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver;-><init>(Lcom/android/server/audio/AudioServiceExt;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    invoke-static {p0}, Lcom/android/server/audio/AudioServiceExt;->-$$Nest$mperformSoftReset(Lcom/android/server/audio/AudioServiceExt;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 468
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 469
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 470
    new-instance p1, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver;)V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
