.class public Lcom/android/server/StorageManagerService$4;
.super Ljava/lang/Object;
.source "StorageManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 2386
    iput-object p1, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "StorageManagerService"

    const-string/jumbo v1, "storaged died; reconnecting"

    .line 2389
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    iget-object v0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->-$$Nest$fputmStoraged(Lcom/android/server/StorageManagerService;Landroid/os/IStoraged;)V

    .line 2391
    iget-object p0, p0, Lcom/android/server/StorageManagerService$4;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$mconnectStoraged(Lcom/android/server/StorageManagerService;)V

    return-void
.end method
