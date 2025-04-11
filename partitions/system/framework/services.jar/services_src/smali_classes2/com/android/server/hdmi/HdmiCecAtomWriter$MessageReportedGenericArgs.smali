.class public Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
.super Ljava/lang/Object;
.source "HdmiCecAtomWriter.java"


# instance fields
.field public final mDestinationLogicalAddress:I

.field public final mDirection:I

.field public final mInitiatorLogicalAddress:I

.field public final mOpcode:I

.field public final mSendMessageResult:I

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecAtomWriter;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;IIIIII)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->this$0:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mUid:I

    .line 209
    iput p3, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDirection:I

    .line 210
    iput p4, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mInitiatorLogicalAddress:I

    .line 211
    iput p5, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDestinationLogicalAddress:I

    .line 212
    iput p6, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mOpcode:I

    .line 213
    iput p7, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mSendMessageResult:I

    return-void
.end method
