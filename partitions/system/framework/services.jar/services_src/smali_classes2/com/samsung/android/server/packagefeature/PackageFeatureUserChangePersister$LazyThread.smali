.class public Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;
.super Ljava/lang/Thread;
.source "PackageFeatureUserChangePersister.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    const-string p1, "PackageFeatureUserChangePersister"

    .line 208
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$fgetmLock(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$msaveFiles(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V

    .line 218
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$mloadFiles(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V

    .line 219
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$fputmThreadStarted(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;Z)V

    .line 220
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
