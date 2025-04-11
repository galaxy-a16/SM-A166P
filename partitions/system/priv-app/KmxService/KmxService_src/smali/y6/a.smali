.class public final Ly6/a;
.super Lu6/e;
.source "SourceFile"

# interfaces
.implements Lk8/a;


# instance fields
.field public final e:Z

.field public final f:J

.field public final g:I

.field public final h:Lf6/a;

.field public final i:Li8/b;

.field public final j:Ly6/b;

.field public final k:Lf6/j;

.field public final l:Lf6/j;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;ZJILf6/a;Lv6/b;Ly6/b;Lf6/j;Lf6/j;Lf6/j;Lf6/h;)V
    .locals 0

    invoke-direct {p0, p1, p11, p12}, Lu6/e;-><init>(Lh8/b;Lf6/j;Lf6/h;)V

    iput-boolean p2, p0, Ly6/a;->e:Z

    iput-wide p3, p0, Ly6/a;->f:J

    iput p5, p0, Ly6/a;->g:I

    iput-object p6, p0, Ly6/a;->h:Lf6/a;

    iput-object p7, p0, Ly6/a;->i:Li8/b;

    iput-object p8, p0, Ly6/a;->j:Ly6/b;

    iput-object p9, p0, Ly6/a;->k:Lf6/j;

    iput-object p10, p0, Ly6/a;->l:Lf6/j;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ly6/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ly6/a;

    invoke-virtual {p0, p1}, Lu6/e;->f(Lu6/e;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Ly6/a;->e:Z

    iget-boolean v3, p1, Ly6/a;->e:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Ly6/a;->f:J

    iget-wide v5, p1, Ly6/a;->f:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Ly6/a;->g:I

    iget v3, p1, Ly6/a;->g:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Ly6/a;->h:Lf6/a;

    iget-object v3, p1, Ly6/a;->h:Lf6/a;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ly6/a;->i:Li8/b;

    iget-object v3, p1, Ly6/a;->i:Li8/b;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ly6/a;->j:Ly6/b;

    iget-object v3, p1, Ly6/a;->j:Ly6/b;

    invoke-virtual {v1, v3}, Ly6/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ly6/a;->k:Lf6/j;

    iget-object v3, p1, Ly6/a;->k:Lf6/j;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Ly6/a;->l:Lf6/j;

    iget-object p1, p1, Ly6/a;->l:Lf6/j;

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
    .locals 4

    invoke-virtual {p0}, Lu6/e;->e()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ly6/a;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Ly6/a;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ly6/a;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ly6/a;->h:Lf6/a;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Ly6/a;->i:Li8/b;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ly6/a;->j:Ly6/b;

    invoke-virtual {v1}, Ly6/b;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Ly6/a;->k:Lf6/j;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ly6/a;->l:Lf6/j;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MqttConnAck{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reasonCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lu6/e;->d:Lh8/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sessionPresent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ly6/a;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ly6/a;->f:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    const-string v7, ""

    if-nez v6, :cond_0

    move-object v2, v7

    goto :goto_0

    :cond_0
    const-string v6, ", sessionExpiryInterval="

    invoke-static {v6, v2, v3}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ly6/a;->g:I

    int-to-long v8, v2

    cmp-long v3, v8, v4

    if-nez v3, :cond_1

    move-object v2, v7

    goto :goto_1

    :cond_1
    const-string v3, ", serverKeepAlive="

    invoke-static {v3, v2}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ly6/a;->h:Lf6/a;

    if-nez v2, :cond_2

    move-object v2, v7

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", assignedClientIdentifier="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ly6/a;->i:Li8/b;

    if-nez v2, :cond_3

    move-object v2, v7

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", enhancedAuth="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ly6/b;->j:Ly6/b;

    iget-object v3, p0, Ly6/a;->j:Ly6/b;

    if-ne v3, v2, :cond_4

    move-object v2, v7

    goto :goto_4

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ", restrictions="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ly6/a;->k:Lf6/j;

    if-nez v2, :cond_5

    move-object v2, v7

    goto :goto_5

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", responseInformation="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ly6/a;->l:Lf6/j;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", serverReference="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lu6/g;->d()Ljava/lang/String;

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
