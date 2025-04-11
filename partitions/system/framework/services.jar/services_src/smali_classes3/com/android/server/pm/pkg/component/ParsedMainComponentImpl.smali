.class public Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
.super Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
.source "ParsedMainComponentImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedMainComponent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public attributionTags:[Ljava/lang/String;

.field public directBootAware:Z

.field public enabled:Z

.field public exported:Z

.field public order:I

.field public processName:Ljava/lang/String;

.field public splitName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 105
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->order:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 59
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    .line 60
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    .line 61
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 62
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isExported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    .line 63
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->order:I

    .line 64
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    .line 65
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getAttributionTags()[Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOrder()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->order:I

    return p0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public getSplitName()Ljava/lang/String;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    return-object p0
.end method

.method public isDirectBootAware()Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 174
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    return p0
.end method

.method public isExported()Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    return p0
.end method

.method public varargs setAttributionTags([Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    return-object p0
.end method

.method public setDirectBootAware(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    return-object p0
.end method

.method public setEnabled(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    return-object p0
.end method

.method public setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    return-object p0
.end method

.method public setOrder(I)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    .locals 0

    .line 212
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->order:I

    return-object p0
.end method

.method public setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    .locals 0

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public setSplitName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    sget-object v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 95
    iget-boolean p2, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 96
    iget-boolean p2, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 97
    iget-boolean p2, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 98
    iget p2, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->order:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object p2, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    return-void
.end method
