.class public Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "ScreenShot.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getStringResId()I
    .locals 1

    const v0, 0x1040127

    return v0
.end method


# virtual methods
.method public performCornerAction(I)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.capture.ScreenshotExecutor"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "capturedOrigin"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "type"

    const-string v1, "Fullscreen"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
