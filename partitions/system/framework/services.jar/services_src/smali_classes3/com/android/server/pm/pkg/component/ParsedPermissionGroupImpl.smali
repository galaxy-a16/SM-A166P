.class public Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;
.super Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
.source "ParsedPermissionGroupImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public backgroundRequestDetailRes:I

.field public backgroundRequestRes:I

.field public priority:I

.field public requestDetailRes:I

.field public requestRes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->requestDetailRes:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestRes:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestDetailRes:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->requestRes:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->priority:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getBackgroundRequestDetailRes()I
    .locals 0

    .line 112
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestDetailRes:I

    return p0
.end method

.method public getBackgroundRequestRes()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestRes:I

    return p0
.end method

.method public getPriority()I
    .locals 0

    .line 122
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->priority:I

    return p0
.end method

.method public getRequestDetailRes()I
    .locals 0

    .line 102
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->requestDetailRes:I

    return p0
.end method

.method public getRequestRes()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->requestRes:I

    return p0
.end method

.method public setBackgroundRequestDetailRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;
    .locals 0

    .line 139
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestDetailRes:I

    return-object p0
.end method

.method public setBackgroundRequestRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;
    .locals 0

    .line 133
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestRes:I

    return-object p0
.end method

.method public setPriority(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;
    .locals 0

    .line 151
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->priority:I

    return-object p0
.end method

.method public setRequestDetailRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;
    .locals 0

    .line 127
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->requestDetailRes:I

    return-object p0
.end method

.method public setRequestRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;
    .locals 0

    .line 145
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->requestRes:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionGroup{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 53
    iget p2, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->requestDetailRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget p2, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget p2, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->backgroundRequestDetailRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget p2, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->requestRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->priority:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
