.class public Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;
.super Ljava/lang/Object;
.source "ContextHubClientManager.java"


# instance fields
.field public final mAction:I

.field public final mBroker:Ljava/lang/String;

.field public final mTimestamp:J

.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubClientManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientManager;Ljava/lang/String;I)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->this$0:Lcom/android/server/location/contexthub/ContextHubClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    .line 108
    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mAction:I

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    const-wide v0, 0x10300000001L

    .line 113
    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mTimestamp:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10500000002L

    .line 114
    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mAction:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000003L

    .line 115
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mTimestamp:J

    invoke-static {v1, v2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->formatDateFromTimestamp(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mAction:I

    if-nez v1, :cond_0

    const-string v1, "+ "

    goto :goto_0

    :cond_0
    const-string v1, "- "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mBroker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->mAction:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const-string p0, " (cancelled)"

    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
