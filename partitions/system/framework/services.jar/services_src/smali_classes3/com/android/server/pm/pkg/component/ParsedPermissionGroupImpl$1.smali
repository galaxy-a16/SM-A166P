.class public Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl$1;
.super Ljava/lang/Object;
.source "ParsedPermissionGroupImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;
    .locals 0

    .line 169
    new-instance p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;
    .locals 0

    .line 164
    new-array p0, p1, [Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl$1;->newArray(I)[Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    move-result-object p0

    return-object p0
.end method
