.class public final Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;
.super Lcom/android/server/hdmi/HdmiCecController$Dumpable;
.source "HdmiCecLocalDevice.java"


# instance fields
.field public final mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

.field public final mCaller:Ljava/lang/String;

.field public final mIsActiveSource:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;ZLjava/lang/String;)V
    .locals 0

    .line 1476
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;-><init>()V

    .line 1477
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 1478
    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mIsActiveSource:Z

    .line 1479
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mCaller:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;ZLjava/lang/String;Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 3

    const-string/jumbo v0, "time="

    .line 1484
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1485
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->mTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " active source="

    .line 1486
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1487
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string p2, " isActiveSource="

    .line 1488
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1489
    iget-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mIsActiveSource:Z

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    const-string p2, " from="

    .line 1490
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1491
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mCaller:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
