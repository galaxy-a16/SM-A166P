.class public Lcom/android/server/accessibility/autoaction/AutoActionController;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "AutoActionController.java"


# instance fields
.field public mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

.field public mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

.field public final mContext:Landroid/content/Context;

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/AutoActionController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/accessibility/autoaction/AutoActionController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mUserId:I

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 81
    iput p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mUserId:I

    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1

    const/16 v0, 0x2002

    if-ne p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 124
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public final handleMouseMotion(Landroid/view/MotionEvent;I)V
    .locals 2

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 p1, 0x9

    if-eq v0, p1, :cond_2

    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    .line 153
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 143
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->update(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->stop()V

    .line 131
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 135
    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    :cond_1
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateMetaState(I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 115
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    const/16 v0, 0x2002

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    new-instance v7, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    const/16 v4, 0x258

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController;Landroid/os/Handler;III)V

    iput-object v7, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 93
    new-instance v1, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    iget v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mUserId:I

    invoke-direct {v1, v2, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;-><init>(ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mAutoActionObserver:Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;

    .line 94
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)V

    .line 97
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/autoaction/AutoActionController;->handleMouseMotion(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->cancel()V

    .line 102
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method
