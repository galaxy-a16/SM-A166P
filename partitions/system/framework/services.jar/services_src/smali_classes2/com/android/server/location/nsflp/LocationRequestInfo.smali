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

    new-instance v0, Lcom/android/server/location/nsflp/LocationRequestInfo$1;

    invoke-direct {v0}, Lcom/android/server/location/nsflp/LocationRequestInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/location/nsflp/LocationRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->listenerId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->quality:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->removedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->maxWaitTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requester:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->pid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isSystemApp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetpackageName(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetversionName(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->versionName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetlistenerId(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->listenerId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetprovider(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetquality(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->quality:I

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetrequestTime(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetbackgroundTime(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetinterval(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetminUpdateInterval(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetmaxWaitTime(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->maxWaitTime:J

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetrequester(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requester:I

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetisForeground(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetnumUpdates(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetuid(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->uid:I

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetpid(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->pid:I

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetisListenerType(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetisAllowed(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetisHighPowerRequest(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;Lcom/android/server/location/nsflp/LocationRequestInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/nsflp/LocationRequestInfo;-><init>(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

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

    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->listenerId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->quality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->removedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->maxWaitTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requester:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->pid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isSystemApp:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
