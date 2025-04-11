.class public final Ly6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk8/b;


# static fields
.field public static final j:Ly6/b;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v9, Ly6/b;

    const v1, 0xffff

    const v2, 0x10000004

    const/4 v3, 0x0

    sget-object v4, Lk8/b;->a:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ly6/b;-><init>(IIILcom/hivemq/client/mqtt/datatypes/MqttQos;ZZZZ)V

    sput-object v9, Ly6/b;->j:Ly6/b;

    return-void
.end method

.method public constructor <init>(IIILcom/hivemq/client/mqtt/datatypes/MqttQos;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ly6/b;->b:I

    iput p2, p0, Ly6/b;->c:I

    iput p3, p0, Ly6/b;->d:I

    iput-object p4, p0, Ly6/b;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iput-boolean p5, p0, Ly6/b;->f:Z

    iput-boolean p6, p0, Ly6/b;->g:Z

    iput-boolean p7, p0, Ly6/b;->h:Z

    iput-boolean p8, p0, Ly6/b;->i:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ly6/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ly6/b;

    iget v1, p1, Ly6/b;->b:I

    iget v3, p0, Ly6/b;->b:I

    if-ne v3, v1, :cond_2

    iget v1, p0, Ly6/b;->c:I

    iget v3, p1, Ly6/b;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Ly6/b;->d:I

    iget v3, p1, Ly6/b;->d:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Ly6/b;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    iget-object v3, p1, Ly6/b;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Ly6/b;->f:Z

    iget-boolean v3, p1, Ly6/b;->f:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Ly6/b;->g:Z

    iget-boolean v3, p1, Ly6/b;->g:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Ly6/b;->h:Z

    iget-boolean v3, p1, Ly6/b;->h:Z

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Ly6/b;->i:Z

    iget-boolean p1, p1, Ly6/b;->i:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Ly6/b;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ly6/b;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ly6/b;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ly6/b;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Ly6/b;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Ly6/b;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Ly6/b;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Ly6/b;->i:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MqttConnAckRestrictions{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receiveMaximum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Ly6/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maximumPacketSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ly6/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", topicAliasMaximum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ly6/b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maximumQos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ly6/b;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", retainAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ly6/b;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", wildcardSubscriptionAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ly6/b;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sharedSubscriptionAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Ly6/b;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", subscriptionIdentifiersAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Ly6/b;->i:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
