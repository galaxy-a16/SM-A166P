.class public Le7/a;
.super Lu6/h;
.source "SourceFile"

# interfaces
.implements Ln8/a;


# instance fields
.field public final c:Lf6/d;

.field public final d:Ljava/nio/ByteBuffer;

.field public final e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field public final f:Z

.field public final g:J

.field public final h:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

.field public final i:Lf6/j;

.field public final j:Lf6/d;

.field public final k:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lf6/d;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;ZJLcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lf6/j;Lf6/d;Ljava/nio/ByteBuffer;Lf6/h;)V
    .locals 0

    invoke-direct {p0, p11}, Lu6/h;-><init>(Lf6/h;)V

    iput-object p1, p0, Le7/a;->c:Lf6/d;

    iput-object p2, p0, Le7/a;->d:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-boolean p4, p0, Le7/a;->f:Z

    iput-wide p5, p0, Le7/a;->g:J

    iput-object p7, p0, Le7/a;->h:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    iput-object p8, p0, Le7/a;->i:Lf6/j;

    iput-object p9, p0, Le7/a;->j:Lf6/d;

    iput-object p10, p0, Le7/a;->k:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Le7/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Le7/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lu6/h;->b:Lf6/h;

    iget-object v3, p1, Lu6/h;->b:Lf6/h;

    invoke-virtual {v1, v3}, Lf6/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le7/a;->c:Lf6/d;

    iget-object v3, p1, Le7/a;->c:Lf6/d;

    invoke-virtual {v1, v3}, Lf6/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le7/a;->d:Ljava/nio/ByteBuffer;

    iget-object v3, p1, Le7/a;->d:Ljava/nio/ByteBuffer;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-object v3, p1, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Le7/a;->f:Z

    iget-boolean v3, p1, Le7/a;->f:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Le7/a;->g:J

    iget-wide v5, p1, Le7/a;->g:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Le7/a;->h:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    iget-object v3, p1, Le7/a;->h:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Le7/a;->i:Lf6/j;

    iget-object v3, p1, Le7/a;->i:Lf6/j;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le7/a;->j:Lf6/d;

    iget-object v3, p1, Le7/a;->j:Lf6/d;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Le7/a;->k:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Le7/a;->k:Ljava/nio/ByteBuffer;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lu6/h;->b:Lf6/h;

    invoke-virtual {v0}, Lf6/h;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le7/a;->c:Lf6/d;

    invoke-virtual {v1}, Lf6/j;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le7/a;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Le7/a;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le7/a;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le7/a;->h:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le7/a;->i:Lf6/j;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le7/a;->j:Lf6/d;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Le7/a;->k:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MqttPublish{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "topic="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Le7/a;->c:Lf6/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "byte"

    const-string v3, ""

    iget-object v4, p0, Le7/a;->d:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ", payload="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", qos="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", retain="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Le7/a;->f:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-wide v4, 0x7fffffffffffffffL

    iget-wide v6, p0, Le7/a;->g:J

    cmp-long v4, v6, v4

    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    const-string v4, ", messageExpiryInterval="

    invoke-static {v4, v6, v7}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le7/a;->h:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    if-nez v4, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ", payloadFormatIndicator="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le7/a;->i:Lf6/j;

    if-nez v4, :cond_3

    move-object v4, v3

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ", contentType="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le7/a;->j:Lf6/d;

    if-nez v4, :cond_4

    move-object v4, v3

    goto :goto_4

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ", responseTopic="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le7/a;->k:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ", correlationData="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lu6/h;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ll9/b;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
