.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 3

    .line 1020
    array-length p0, p1

    const/16 v0, 0xb

    const/4 v1, 0x4

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    .line 1023
    aget-byte v0, p1, p0

    .line 1024
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDayOfMonth(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    aget-byte v2, p1, v0

    .line 1025
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMonthOfYear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    .line 1026
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidHour(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    .line 1027
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMinute(I)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-byte v1, p1, v1

    .line 1028
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDurationHours(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    .line 1029
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMinute(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    .line 1030
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidRecordingSequence(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    .line 1031
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDigitalServiceIdentification([BI)Z

    move-result p1

    if-eqz p1, :cond_1

    move p0, v0

    .line 1023
    :cond_1
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
