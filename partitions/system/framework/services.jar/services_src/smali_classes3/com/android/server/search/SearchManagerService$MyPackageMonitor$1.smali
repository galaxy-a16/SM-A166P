.class public Lcom/android/server/search/SearchManagerService$MyPackageMonitor$1;
.super Landroid/os/Handler;
.source "SearchManagerService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/search/SearchManagerService$MyPackageMonitor;

.field public final synthetic val$this$0:Lcom/android/server/search/SearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService$MyPackageMonitor;Landroid/os/Looper;Lcom/android/server/search/SearchManagerService;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor$1;->this$1:Lcom/android/server/search/SearchManagerService$MyPackageMonitor;

    iput-object p3, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor$1;->val$this$0:Lcom/android/server/search/SearchManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 229
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$MyPackageMonitor$1;->this$1:Lcom/android/server/search/SearchManagerService$MyPackageMonitor;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->-$$Nest$m_updateSearchables(Lcom/android/server/search/SearchManagerService$MyPackageMonitor;I)V

    return-void
.end method
