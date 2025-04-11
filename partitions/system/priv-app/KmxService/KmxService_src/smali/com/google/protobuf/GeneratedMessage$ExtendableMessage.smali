.class public abstract Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;",
        ">",
        "Lcom/google/protobuf/GeneratedMessage;",
        "Lcom/google/protobuf/t8;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final extensions:Lcom/google/protobuf/j5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/j5;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1
    new-instance v0, Lcom/google/protobuf/j5;

    invoke-direct {v0}, Lcom/google/protobuf/j5;-><init>()V

    .line 2
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w5;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/t5;)V

    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method public static synthetic access$600(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/google/protobuf/j5;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    return-object p0
.end method

.method private verifyContainingType(Lcom/google/protobuf/n3;)V
    .locals 0

    iget-object p1, p1, Lcom/google/protobuf/n3;->h:Lcom/google/protobuf/h3;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object p0

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private verifyExtensionContainingType(Lcom/google/protobuf/n4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/n4;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/n4;->b()Lcom/google/protobuf/n3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/protobuf/n3;->h:Lcom/google/protobuf/h3;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extension is for type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n4;->b()Lcom/google/protobuf/n3;

    move-result-object p1

    iget-object p1, p1, Lcom/google/protobuf/n3;->h:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/h3;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" which does not match message type \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object p0

    iget-object p0, p0, Lcom/google/protobuf/h3;->b:Ljava/lang/String;

    const-string p1, "\"."

    invoke-static {v1, p0, p1}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public extensionsAreInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    invoke-virtual {p0}, Lcom/google/protobuf/j5;->p()Z

    move-result p0

    return p0
.end method

.method public extensionsSerializedSize()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    invoke-virtual {p0}, Lcom/google/protobuf/j5;->n()I

    move-result p0

    return p0
.end method

.method public extensionsSerializedSizeAsMessageSet()I
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    invoke-virtual {p0}, Lcom/google/protobuf/j5;->j()I

    move-result p0

    return p0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/n3;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/GeneratedMessage;->access$800(Lcom/google/protobuf/GeneratedMessage;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->getExtensionFields()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getAllFieldsRaw()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/n3;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/GeneratedMessage;->access$800(Lcom/google/protobuf/GeneratedMessage;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->getExtensionFields()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/n8;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/r8;
.end method

.method public final getExtension(Lcom/google/protobuf/n4;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/n4;",
            ")TType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->getExtension(Lcom/google/protobuf/o4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getExtension(Lcom/google/protobuf/n4;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/n4;",
            "I)TType;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->getExtension(Lcom/google/protobuf/o4;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getExtension(Lcom/google/protobuf/o4;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/o4;",
            ")TType;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage;->access$500(Lcom/google/protobuf/o4;)Lcom/google/protobuf/n4;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/n4;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n4;->b()Lcom/google/protobuf/n3;

    move-result-object v0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/j5;->i(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/n3;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne p0, v1, :cond_1

    check-cast p1, Lcom/google/protobuf/z5;

    iget-object p0, p1, Lcom/google/protobuf/z5;->c:Lcom/google/protobuf/n8;

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/n3;->f()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/n4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1, p0}, Lcom/google/protobuf/n4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getExtension(Lcom/google/protobuf/o4;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/o4;",
            "I)TType;"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage;->access$500(Lcom/google/protobuf/o4;)Lcom/google/protobuf/n4;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/n4;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n4;->b()Lcom/google/protobuf/n3;

    move-result-object v0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/j5;->l(Lcom/google/protobuf/i5;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/n4;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getExtension(Lcom/google/protobuf/z5;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/z5;",
            ")TType;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->getExtension(Lcom/google/protobuf/o4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getExtension(Lcom/google/protobuf/z5;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/z5;",
            "I)TType;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->getExtension(Lcom/google/protobuf/o4;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getExtensionCount(Lcom/google/protobuf/n4;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/n4;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->getExtensionCount(Lcom/google/protobuf/o4;)I

    move-result p0

    return p0
.end method

.method public final getExtensionCount(Lcom/google/protobuf/o4;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/o4;",
            ")I"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage;->access$500(Lcom/google/protobuf/o4;)Lcom/google/protobuf/n4;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/n4;)V

    invoke-virtual {p1}, Lcom/google/protobuf/n4;->b()Lcom/google/protobuf/n3;

    move-result-object p1

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j5;->m(Lcom/google/protobuf/i5;)I

    move-result p0

    return p0
.end method

.method public final getExtensionCount(Lcom/google/protobuf/z5;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/z5;",
            ")I"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->getExtensionCount(Lcom/google/protobuf/o4;)I

    move-result p0

    return p0
.end method

.method public getExtensionFields()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/n3;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    invoke-virtual {p0}, Lcom/google/protobuf/j5;->h()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/google/protobuf/n3;)V

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j5;->i(Lcom/google/protobuf/i5;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/n3;->h()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->k()Lcom/google/protobuf/h3;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/e4;->d(Lcom/google/protobuf/h3;)Lcom/google/protobuf/e4;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/n3;->f()Ljava/lang/Object;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage;->getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatedField(Lcom/google/protobuf/n3;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/google/protobuf/n3;)V

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/j5;->l(Lcom/google/protobuf/i5;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage;->getRepeatedField(Lcom/google/protobuf/n3;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/n3;)I
    .locals 1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/google/protobuf/n3;)V

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j5;->m(Lcom/google/protobuf/i5;)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage;->getRepeatedFieldCount(Lcom/google/protobuf/n3;)I

    move-result p0

    return p0
.end method

.method public final hasExtension(Lcom/google/protobuf/n4;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/n4;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->hasExtension(Lcom/google/protobuf/o4;)Z

    move-result p0

    return p0
.end method

.method public final hasExtension(Lcom/google/protobuf/o4;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/o4;",
            ")Z"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage;->access$500(Lcom/google/protobuf/o4;)Lcom/google/protobuf/n4;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/n4;)V

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    invoke-virtual {p1}, Lcom/google/protobuf/n4;->b()Lcom/google/protobuf/n3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j5;->o(Lcom/google/protobuf/i5;)Z

    move-result p0

    return p0
.end method

.method public final hasExtension(Lcom/google/protobuf/z5;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/z5;",
            ")Z"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->hasExtension(Lcom/google/protobuf/o4;)Z

    move-result p0

    return p0
.end method

.method public hasField(Lcom/google/protobuf/n3;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/protobuf/n3;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->verifyContainingType(Lcom/google/protobuf/n3;)V

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/j5;->o(Lcom/google/protobuf/i5;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage;->hasField(Lcom/google/protobuf/n3;)Z

    move-result p0

    return p0
.end method

.method public isInitialized()Z
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensionsAreInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makeExtensionsImmutable()V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    invoke-virtual {p0}, Lcom/google/protobuf/j5;->t()V

    return-void
.end method

.method public abstract synthetic newBuilderForType()Lcom/google/protobuf/m8;
.end method

.method public abstract synthetic newBuilderForType()Lcom/google/protobuf/q8;
.end method

.method public newExtensionWriter()Lcom/google/protobuf/x5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/x5;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/x5;

    invoke-direct {v0, p0}, Lcom/google/protobuf/x5;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)V

    return-object v0
.end method

.method public newMessageSetExtensionWriter()Lcom/google/protobuf/x5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/x5;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/x5;

    invoke-direct {v0, p0}, Lcom/google/protobuf/x5;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)V

    return-object v0
.end method

.method public parseUnknownField(Lcom/google/protobuf/i0;Lcom/google/protobuf/lb;Lcom/google/protobuf/t4;I)Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->getDescriptorForType()Lcom/google/protobuf/h3;

    move-result-object v3

    new-instance v4, Lcom/google/protobuf/w8;

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->extensions:Lcom/google/protobuf/j5;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/google/protobuf/w8;-><init>(Ljava/lang/Object;I)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/c8;->W(Lcom/google/protobuf/i0;Lcom/google/protobuf/lb;Lcom/google/protobuf/t4;Lcom/google/protobuf/h3;Lcom/google/protobuf/x8;I)Z

    move-result p0

    return p0
.end method

.method public abstract synthetic toBuilder()Lcom/google/protobuf/m8;
.end method

.method public abstract synthetic toBuilder()Lcom/google/protobuf/q8;
.end method
