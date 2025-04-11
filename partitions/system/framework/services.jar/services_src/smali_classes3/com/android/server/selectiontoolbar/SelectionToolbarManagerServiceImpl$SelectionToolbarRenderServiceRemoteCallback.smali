.class public final Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl$SelectionToolbarRenderServiceRemoteCallback;
.super Landroid/service/selectiontoolbar/ISelectionToolbarRenderServiceCallback$Stub;
.source "SelectionToolbarManagerServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl$SelectionToolbarRenderServiceRemoteCallback;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;

    invoke-direct {p0}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderServiceCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl$SelectionToolbarRenderServiceRemoteCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl$SelectionToolbarRenderServiceRemoteCallback;-><init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public transferTouch(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl$SelectionToolbarRenderServiceRemoteCallback;->this$0:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;

    invoke-static {p0, p1, p2}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->-$$Nest$mtransferTouchFocus(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method
