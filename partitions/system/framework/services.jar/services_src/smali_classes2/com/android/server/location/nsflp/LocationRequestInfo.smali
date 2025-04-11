.class public Lcom/android/server/location/nsflp/LocationRequestInfo;
.super Ljava/lang/Object;
.source "LocationRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public backgroundDuration:J

.field public backgroundTime:J

.field public interval:J

.field public isAllowed:Z

.field public isForeground:Z

.field public isHighPowerRequest:Z

.field public isListenerType:Z

.field public isPassive:Z

.field public isSystemApp:Z

.field public lastUpdateTime:J

.field public listenerId:Ljava/lang/String;

.field public maxWaitTime:J

.field public minUpdateInterval:J

.field public numUpdates:I

.field public packageName:Ljava/lang/String;

.field public pid:I

.field public provider:Ljava/lang/String;

.field public quality:I

.field public removedTime:J

.field public requestTime:J

.field public requester:I

.field public uid:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 407
    new-instance v0, Lcom/android/server/location/nsflp/LocationRequestInfo$1;

    invoke-direct {v0}, Lcom/android/server/location/nsflp/LocationRequestInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/location/nsflp/LocationRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    const-wide/16 v1, 0x0

    .line 49
    iput-wide v1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->versionName:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->listenerId:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->quality:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->removedTime:J

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundDuration:J

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->maxWaitTime:J

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requester:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->uid:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->pid:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isSystemApp:Z

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_5

    move v0, v1

    :cond_5
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    .line 54
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetpackageName(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetversionName(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->versionName:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetlistenerId(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->listenerId:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetprovider(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetquality(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->quality:I

    .line 59
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetrequestTime(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    .line 60
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetbackgroundTime(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    .line 61
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetinterval(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    .line 62
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetminUpdateInterval(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    .line 63
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetmaxWaitTime(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->maxWaitTime:J

    .line 64
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetrequester(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requester:I

    .line 65
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetisForeground(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    .line 66
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetnumUpdates(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    .line 67
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetuid(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->uid:I

    .line 68
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetpid(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->pid:I

    .line 69
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetisListenerType(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    .line 70
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetisAllowed(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    .line 71
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetisHighPowerRequest(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;Lcom/android/server/location/nsflp/LocationRequestInfo-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/nsflp/LocationRequestInfo;-><init>(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 356
    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->listenerId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->quality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 362
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->removedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 363
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 364
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 365
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 366
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 367
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->maxWaitTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 368
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requester:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->pid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 374
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isSystemApp:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 375
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 376
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 377
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 378
    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
