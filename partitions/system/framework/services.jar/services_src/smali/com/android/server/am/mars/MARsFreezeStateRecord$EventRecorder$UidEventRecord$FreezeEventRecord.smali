.class public Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;
.super Ljava/lang/Object;
.source "MARsFreezeStateRecord.java"


# instance fields
.field public final event:Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

.field public final reason:Ljava/lang/String;

.field public final time:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetevent(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;)Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->event:Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetreason(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgettime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->time:J

    return-wide v0
.end method

.method public constructor <init>(Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->event:Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    iput-wide p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->time:J

    iput-object p4, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->reason:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;JLjava/lang/String;Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;-><init>(Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;JLjava/lang/String;)V

    return-void
.end method
