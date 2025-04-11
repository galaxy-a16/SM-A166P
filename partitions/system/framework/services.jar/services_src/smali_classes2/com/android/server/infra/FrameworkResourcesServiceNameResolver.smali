.class public final Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;
.super Lcom/android/server/infra/ServiceNameBaseResolver;
.source "FrameworkResourcesServiceNameResolver.java"


# instance fields
.field public final mArrayResourceId:I

.field public final mStringResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/server/infra/ServiceNameBaseResolver;-><init>(Landroid/content/Context;Z)V

    .line 41
    iput p2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mArrayResourceId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p3}, Lcom/android/server/infra/ServiceNameBaseResolver;-><init>(Landroid/content/Context;Z)V

    if-eqz p3, :cond_0

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    .line 54
    iput p2, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mArrayResourceId:I

    return-void

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please use FrameworkResourcesServiceNameResolver(context, @StringRes int) constructor if single service mode is requested."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dumpShort(Ljava/io/PrintWriter;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "FrameworkResourcesServiceNamer: resId="

    .line 73
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    iget v1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ", numberTemps="

    .line 75
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mTemporaryServiceNamesList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ", enabledDefaults="

    .line 77
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 79
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public readServiceName(I)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mStringResourceId:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readServiceNameList(I)[Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->mArrayResourceId:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
