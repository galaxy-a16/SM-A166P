.class public Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;
.super Landroid/os/Handler;
.source "CoverTestModeUtils.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 38
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->-$$Nest$sfgetsCurrentTestMode()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 39
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->-$$Nest$fgetmCallback(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    move-result-object p0

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->-$$Nest$sfgetsCurrentTestMode()I

    move-result p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;->onCoverTestModeChanged(IZ)V

    :cond_0
    return-void
.end method
