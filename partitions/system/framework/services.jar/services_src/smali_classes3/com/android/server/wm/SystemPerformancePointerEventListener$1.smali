.class public Lcom/android/server/wm/SystemPerformancePointerEventListener$1;
.super Landroid/view/GestureDetector;
.source "SystemPerformancePointerEventListener.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$1;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method
