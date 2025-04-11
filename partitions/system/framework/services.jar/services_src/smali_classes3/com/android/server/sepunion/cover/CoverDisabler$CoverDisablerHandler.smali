.class public final Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;
.super Landroid/os/Handler;
.source "CoverDisabler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverDisabler;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverDisabler;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;->this$0:Lcom/android/server/sepunion/cover/CoverDisabler;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sepunion/cover/CoverDisabler;Landroid/os/Looper;Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;-><init>(Lcom/android/server/sepunion/cover/CoverDisabler;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;->this$0:Lcom/android/server/sepunion/cover/CoverDisabler;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/android/server/sepunion/cover/CoverDisabler;->-$$Nest$mhandleDisableCoverManagerLocked(Lcom/android/server/sepunion/cover/CoverDisabler;Z)V

    :goto_1
    return-void
.end method
