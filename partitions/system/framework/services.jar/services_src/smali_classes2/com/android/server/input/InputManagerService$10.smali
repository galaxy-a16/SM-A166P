.class public Lcom/android/server/input/InputManagerService$10;
.super Landroid/database/ContentObserver;
.source "InputManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 5588
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$10;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 5591
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 5592
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$10;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->updateMultiFingerTapBehavior(I)V

    return-void
.end method
