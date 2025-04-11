.class public Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# instance fields
.field public final handle:J

.field public final userId:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-wide p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;->handle:J

    .line 395
    iput p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;->userId:I

    return-void
.end method
