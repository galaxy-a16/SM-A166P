.class public Lcom/android/server/input/KeyboardBacklightController$1;
.super Landroid/os/UEventObserver;
.source "KeyboardBacklightController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyboardBacklightController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardBacklightController;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$1;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$1;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->onKeyboardBacklightUEvent(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method
