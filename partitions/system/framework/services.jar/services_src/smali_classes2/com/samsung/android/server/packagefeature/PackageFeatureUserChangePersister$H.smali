.class public Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;
.super Landroid/os/Handler;
.source "PackageFeatureUserChangePersister.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;Landroid/os/Looper;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 171
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;Landroid/os/Looper;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 176
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$fgetmLock(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$fgetmThreadStarted(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    monitor-exit p1

    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$fgetmLoadRequestFlags(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$fgetmSaveRequestFlagsWithUserId(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    monitor-exit p1

    return-void

    .line 194
    :cond_2
    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;

    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-direct {v1, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 195
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {p0, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$fputmThreadStarted(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;Z)V

    .line 196
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
