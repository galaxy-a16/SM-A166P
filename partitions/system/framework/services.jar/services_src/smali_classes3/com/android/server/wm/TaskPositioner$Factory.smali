.class public interface abstract Lcom/android/server/wm/TaskPositioner$Factory;
.super Ljava/lang/Object;
.source "TaskPositioner.java"


# virtual methods
.method public create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;
    .locals 0

    new-instance p0, Lcom/android/server/wm/TaskPositioner;

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-object p0
.end method
