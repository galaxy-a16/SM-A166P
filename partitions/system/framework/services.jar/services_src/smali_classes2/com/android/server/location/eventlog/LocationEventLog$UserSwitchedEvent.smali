.class public final Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;
.super Ljava/lang/Object;
.source "LocationEventLog.java"


# instance fields
.field public final mUserIdFrom:I

.field public final mUserIdTo:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;->mUserIdFrom:I

    .line 474
    iput p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;->mUserIdTo:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current user switched from u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;->mUserIdFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$UserSwitchedEvent;->mUserIdTo:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
