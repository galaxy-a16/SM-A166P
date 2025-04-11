.class public Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# instance fields
.field public final handle:J

.field public final userId:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;->handle:J

    iput p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;->userId:I

    return-void
.end method
