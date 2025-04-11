.class public Lcom/android/server/pm/pkg/component/ParsedServiceImpl$1;
.super Ljava/lang/Object;
.source "ParsedServiceImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .locals 0

    .line 91
    new-instance p0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;

    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/pm/pkg/component/ParsedServiceImpl;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .locals 0

    .line 96
    new-array p0, p1, [Lcom/android/server/pm/pkg/component/ParsedServiceImpl;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl$1;->newArray(I)[Lcom/android/server/pm/pkg/component/ParsedServiceImpl;

    move-result-object p0

    return-object p0
.end method
