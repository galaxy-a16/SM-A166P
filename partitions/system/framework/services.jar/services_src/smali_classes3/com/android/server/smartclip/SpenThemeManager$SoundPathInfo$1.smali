.class public Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;
.super Landroid/os/Handler;
.source "SpenThemeManager.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;->this$1:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;->this$1:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->handleWriteSetting(Landroid/content/Context;)V

    return-void
.end method
