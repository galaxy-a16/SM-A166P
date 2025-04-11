.class public Lcom/android/server/ledcover/LedBackCoverService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LedBackCoverService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ledcover/LedBackCoverService$UpdateReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/ledcover/LedBackCoverService$UpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    .line 48
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {p1}, Lcom/android/server/ledcover/LedBackCoverService;->-$$Nest$smbackgroundWhitelist(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
