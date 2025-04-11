.class public Lcom/android/server/wm/WindowOrganizerController$1;
.super Ljava/lang/Object;
.source "WindowOrganizerController.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction$ContainerChange;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$1;->this$0:Lcom/android/server/wm/WindowOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$1;->val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Landroid/os/IBinder;
    .locals 0

    .line 638
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$1;->val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;

    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$ContainerChange;->getToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 0

    .line 635
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrganizerController$1;->getKey()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Landroid/window/WindowContainerTransaction$Change;
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$1;->val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;

    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$ContainerChange;->getChange()Landroid/window/WindowContainerTransaction$Change;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 635
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrganizerController$1;->getValue()Landroid/window/WindowContainerTransaction$Change;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Landroid/window/WindowContainerTransaction$Change;)Landroid/window/WindowContainerTransaction$Change;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 635
    check-cast p1, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrganizerController$1;->setValue(Landroid/window/WindowContainerTransaction$Change;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object p0

    return-object p0
.end method
