.class public Lcom/android/server/pm/pkg/component/ParsedProviderImpl$1;
.super Ljava/lang/Object;
.source "ParsedProviderImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .locals 0

    .line 160
    new-instance p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/server/pm/pkg/component/ParsedProviderImpl;
    .locals 0

    .line 165
    new-array p0, p1, [Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl$1;->newArray(I)[Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    move-result-object p0

    return-object p0
.end method
