.class public abstract Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"


# instance fields
.field public final mAction:Ljava/lang/String;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/ComponentName;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    .line 156
    iput p2, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    .line 157
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 180
    :cond_0
    instance-of v1, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 184
    :cond_1
    check-cast p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    .line 185
    iget v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    iget v3, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    .line 186
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 187
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 172
    iget p0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const-string/jumbo p0, "none"

    return-object p0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
