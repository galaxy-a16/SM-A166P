.class public Lcom/samsung/android/knox/custom/HardKeyReport$1;
.super Ljava/lang/Object;
.source "HardKeyReport.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/custom/HardKeyReport;
    .locals 1

    new-instance p0, Lcom/samsung/android/knox/custom/HardKeyReport;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/custom/HardKeyReport;-><init>(Landroid/os/Parcel;Lcom/samsung/android/knox/custom/HardKeyReport-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/custom/HardKeyReport$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/custom/HardKeyReport;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/custom/HardKeyReport;
    .locals 0

    new-array p0, p1, [Lcom/samsung/android/knox/custom/HardKeyReport;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/custom/HardKeyReport$1;->newArray(I)[Lcom/samsung/android/knox/custom/HardKeyReport;

    move-result-object p0

    return-object p0
.end method
