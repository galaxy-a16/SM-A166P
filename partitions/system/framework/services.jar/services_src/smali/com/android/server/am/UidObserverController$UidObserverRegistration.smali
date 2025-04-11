.class public final Lcom/android/server/am/UidObserverController$UidObserverRegistration;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# static fields
.field public static final ORIG_ENUMS:[I

.field public static final PROTO_ENUMS:[I


# instance fields
.field public final mCanInteractAcrossUsers:Z

.field public final mCutpoint:I

.field public final mLastProcStates:Landroid/util/SparseIntArray;

.field public mMaxDispatchTime:I

.field public final mPkg:Ljava/lang/String;

.field public mSlowDispatchCount:I

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I

.field public mUids:[I

.field public final mWhich:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCanInteractAcrossUsers(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCanInteractAcrossUsers:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCutpoint(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPkg(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUid(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWhich(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 542
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->ORIG_ENUMS:[I

    new-array v0, v0, [I

    .line 550
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->PROTO_ENUMS:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x8
        0x2
        0x1
        0x20
        0x40
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x4
        0x2
        0x1
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;IIZ[ILandroid/os/IBinder;)V
    .locals 0

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    .line 562
    iput-object p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    .line 563
    iput p3, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    .line 564
    iput p4, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    .line 565
    iput-boolean p5, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCanInteractAcrossUsers:Z

    const/4 p1, 0x0

    if-eqz p6, :cond_0

    .line 568
    invoke-virtual {p6}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    iput-object p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 569
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    .line 571
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 574
    :goto_0
    iput-object p7, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mToken:Landroid/os/IBinder;

    if-ltz p4, :cond_1

    .line 577
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    :cond_1
    iput-object p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 7

    .line 589
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    if-nez v0, :cond_0

    return-void

    .line 594
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    const/4 v1, 0x0

    move v3, v1

    .line 596
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_4

    if-nez v3, :cond_3

    .line 598
    aget v4, v0, v1

    if-ge v4, p1, :cond_1

    .line 599
    iget-object v5, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    aput v4, v5, v1

    goto :goto_1

    :cond_1
    if-ne v4, p1, :cond_2

    .line 602
    iput-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    return-void

    .line 605
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    aput p1, v3, v1

    add-int/lit8 v4, v1, 0x1

    .line 606
    aget v5, v0, v1

    aput v5, v3, v4

    move v3, v2

    goto :goto_1

    .line 610
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    add-int/lit8 v5, v1, 0x1

    aget v6, v0, v1

    aput v6, v4, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    .line 615
    iget-object p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    array-length v0, v0

    aput p1, p0, v0

    :cond_5
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V
    .locals 2

    const-string v0, "    "

    .line 649
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " "

    .line 651
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ":"

    .line 655
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_0

    const-string p2, " IDLE"

    .line 657
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    :cond_0
    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_1

    const-string p2, " ACT"

    .line 660
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 662
    :cond_1
    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    const-string p2, " GONE"

    .line 663
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 665
    :cond_2
    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_3

    const-string p2, " CAP"

    .line 666
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    :cond_3
    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_4

    const-string p2, " STATE"

    .line 669
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " (cut="

    .line 670
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 671
    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, ")"

    .line 672
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 675
    iget-object p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_5

    .line 676
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_5

    const-string v1, "      Last "

    .line 678
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 679
    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v1, ": "

    .line 680
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 12

    .line 687
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 688
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10900000002L

    .line 689
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x20e00000003L

    .line 690
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    int-to-long v8, v0

    sget-object v10, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->ORIG_ENUMS:[I

    sget-object v11, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->PROTO_ENUMS:[I

    move-object v5, p1

    invoke-static/range {v5 .. v11}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V

    const-wide v3, 0x10500000004L

    .line 692
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 693
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const-wide v4, 0x20b00000005L

    .line 696
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 697
    iget-object v6, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 698
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 697
    invoke-virtual {p1, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 699
    iget-object v6, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    .line 700
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    const-wide v7, 0x10500000002L

    .line 699
    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 701
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 704
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 0

    .line 645
    iget-object p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public isWatchingUid(I)Z
    .locals 1

    .line 581
    iget-object p0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 585
    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeUid(I)V
    .locals 7

    .line 620
    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    if-eqz v0, :cond_4

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 625
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    const/4 v1, 0x0

    move v3, v1

    .line 627
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_4

    if-nez v3, :cond_3

    .line 629
    aget v4, v0, v1

    if-ne v4, p1, :cond_1

    move v3, v2

    goto :goto_1

    .line 631
    :cond_1
    array-length v5, v0

    sub-int/2addr v5, v2

    if-ne v1, v5, :cond_2

    .line 633
    iput-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    return-void

    .line 636
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    aput v4, v5, v1

    goto :goto_1

    .line 639
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    add-int/lit8 v5, v1, -0x1

    aget v6, v0, v1

    aput v6, v4, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method
