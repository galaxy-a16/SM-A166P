.class public Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
.super Ljava/lang/Object;
.source "HdmiCecAtomWriter.java"


# instance fields
.field public mFeatureAbortOpcode:I

.field public mFeatureAbortReason:I

.field public mUserControlPressedCommand:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecAtomWriter;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;)V
    .locals 1

    .line 223
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->this$0:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 224
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    const/16 v0, 0x100

    .line 225
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    .line 226
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;)V

    return-void
.end method
