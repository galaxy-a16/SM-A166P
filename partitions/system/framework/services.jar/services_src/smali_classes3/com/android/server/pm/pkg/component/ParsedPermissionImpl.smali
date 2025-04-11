.class public Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
.super Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
.source "ParsedPermissionImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedPermission;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field public backgroundPermission:Ljava/lang/String;

.field public group:Ljava/lang/String;

.field public knownCerts:Ljava/util/Set;

.field public parsedPermissionGroup:Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

.field public protectionLevel:I

.field public requestRes:I

.field public tree:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    .line 127
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    .line 121
    const-class v0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    .line 123
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getBackgroundPermission()Ljava/lang/String;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    return-object p0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    return-object p0
.end method

.method public getKnownCerts()Ljava/util/Set;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getParsedPermissionGroup()Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    return-object p0
.end method

.method public getProtectionLevel()I
    .locals 0

    .line 192
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    return p0
.end method

.method public getRequestRes()I
    .locals 0

    .line 187
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    return p0
.end method

.method public isTree()Z
    .locals 0

    .line 197
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    return p0
.end method

.method public setBackgroundPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .locals 0

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    return-object p0
.end method

.method public setKnownCert(Ljava/lang/String;)V
    .locals 1

    .line 75
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    return-void
.end method

.method public setKnownCerts([Ljava/lang/String;)V
    .locals 5

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    .line 80
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 81
    iget-object v3, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setParsedPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    return-object p0
.end method

.method public setProtectionLevel(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .locals 0

    .line 214
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    return-object p0
.end method

.method public setRequestRes(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .locals 0

    .line 208
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    return-object p0
.end method

.method public setTree(Z)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
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
    .locals 1

    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 105
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    return-void
.end method
