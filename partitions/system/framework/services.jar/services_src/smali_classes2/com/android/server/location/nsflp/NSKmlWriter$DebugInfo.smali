.class public Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;
.super Ljava/lang/Object;
.source "NSKmlWriter.java"


# instance fields
.field public final lastInterval:Ljava/lang/String;

.field public final latitude:Ljava/lang/String;

.field public final longitude:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final receivedTime:Ljava/lang/String;

.field public final sessionNumber:J

.field public final time:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetlastInterval(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->lastInterval:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetlatitude(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->latitude:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetlongitude(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->longitude:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmessage(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->message:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetreceivedTime(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->receivedTime:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsessionNumber(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->sessionNumber:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgettime(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->time:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgettype(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->type:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->receivedTime:Ljava/lang/String;

    .line 606
    iput-object p2, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->type:Ljava/lang/String;

    .line 607
    iput-wide p3, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->sessionNumber:J

    .line 608
    iput-object p5, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->latitude:Ljava/lang/String;

    .line 609
    iput-object p6, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->longitude:Ljava/lang/String;

    .line 610
    iput-object p7, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->time:Ljava/lang/String;

    .line 611
    iput-object p8, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->lastInterval:Ljava/lang/String;

    .line 612
    iput-object p9, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->message:Ljava/lang/String;

    return-void
.end method
