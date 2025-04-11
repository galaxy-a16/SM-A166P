.class public final Lcom/google/protobuf/r0;
.super Lcom/google/protobuf/g;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/protobuf/r0;->a:I

    invoke-direct {p0}, Lcom/google/protobuf/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/protobuf/r0;->a:I

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->newBuilder()Lcom/google/protobuf/compiler/a;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/a;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/a;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/a;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/a;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/a;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_1
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->newBuilder()Lu5/b;

    move-result-object p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lu5/b;->g(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    invoke-virtual {p0}, Lu5/b;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object p0

    return-object p0

    :catch_3
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lu5/b;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lu5/b;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_5
    move-exception p1

    invoke-virtual {p0}, Lu5/b;->c()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_2
    sget-object p0, Lcom/google/protobuf/ob;->b:Lcom/google/protobuf/ob;

    new-instance p0, Lcom/google/protobuf/lb;

    invoke-direct {p0}, Lcom/google/protobuf/lb;-><init>()V

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/lb;->e(Lcom/google/protobuf/i0;)V
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    invoke-virtual {p0}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object p0

    return-object p0

    :catch_6
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_7
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/lb;->a()Lcom/google/protobuf/ob;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/google/protobuf/a3;

    move-result-object p0

    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a3;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    invoke-virtual {p0}, Lcom/google/protobuf/a3;->c()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p0

    return-object p0

    :catch_8
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/a3;->c()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_9
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/a3;->c()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_a
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/a3;->c()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_4
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->newBuilder()Lcom/google/protobuf/v2;

    move-result-object p0

    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v2;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    invoke-virtual {p0}, Lcom/google/protobuf/v2;->c()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object p0

    return-object p0

    :catch_b
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/v2;->c()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_c
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/v2;->c()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_d
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/v2;->c()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_5
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceOptions;->newBuilder()Lcom/google/protobuf/t2;

    move-result-object p0

    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t2;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e

    invoke-virtual {p0}, Lcom/google/protobuf/t2;->i()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object p0

    return-object p0

    :catch_e
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t2;->i()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_f
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/t2;->i()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_10
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/t2;->i()Lcom/google/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_6
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->newBuilder()Lcom/google/protobuf/r2;

    move-result-object p0

    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r2;->g(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11

    invoke-virtual {p0}, Lcom/google/protobuf/r2;->c()Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    return-object p0

    :catch_11
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/r2;->c()Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_12
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/r2;->c()Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_13
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/r2;->c()Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_7
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$OneofOptions;->newBuilder()Lcom/google/protobuf/p2;

    move-result-object p0

    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/p2;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_7
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_14

    invoke-virtual {p0}, Lcom/google/protobuf/p2;->i()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object p0

    return-object p0

    :catch_14
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/p2;->i()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_15
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/p2;->i()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_16
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/p2;->i()Lcom/google/protobuf/DescriptorProtos$OneofOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_8
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;->newBuilder()Lcom/google/protobuf/n2;

    move-result-object p0

    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/n2;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_8
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_17

    invoke-virtual {p0}, Lcom/google/protobuf/n2;->c()Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object p0

    return-object p0

    :catch_17
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/n2;->c()Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_18
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/n2;->c()Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_19
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/n2;->c()Lcom/google/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_9
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->newBuilder()Lcom/google/protobuf/k2;

    move-result-object p0

    :try_start_9
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/k2;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_9 .. :try_end_9} :catch_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1a

    invoke-virtual {p0}, Lcom/google/protobuf/k2;->i()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object p0

    return-object p0

    :catch_1a
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/k2;->i()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1b
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/k2;->i()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1c
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/k2;->i()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_a
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->newBuilder()Lcom/google/protobuf/i2;

    move-result-object p0

    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/i2;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_a .. :try_end_a} :catch_1f
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_a .. :try_end_a} :catch_1e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1d

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->c()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object p0

    return-object p0

    :catch_1d
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->c()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1e
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->c()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1f
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/i2;->c()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_b
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/google/protobuf/g2;

    move-result-object p0

    :try_start_b
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g2;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_b} :catch_22
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_b .. :try_end_b} :catch_21
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_20

    invoke-virtual {p0}, Lcom/google/protobuf/g2;->i()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0

    :catch_20
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/g2;->i()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/g2;->i()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_22
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/g2;->i()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_c
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;->newBuilder()Lcom/google/protobuf/e2;

    move-result-object p0

    :try_start_c
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/e2;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_c .. :try_end_c} :catch_25
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_c .. :try_end_c} :catch_24
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_23

    invoke-virtual {p0}, Lcom/google/protobuf/e2;->c()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object p0

    return-object p0

    :catch_23
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/e2;->c()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_24
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/e2;->c()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_25
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/e2;->c()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_d
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/google/protobuf/y1;

    move-result-object p0

    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/y1;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_d .. :try_end_d} :catch_28
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_d .. :try_end_d} :catch_27
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_26

    invoke-virtual {p0}, Lcom/google/protobuf/y1;->i()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object p0

    return-object p0

    :catch_26
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/y1;->i()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_27
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/y1;->i()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_28
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/y1;->i()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_e
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->newBuilder()Lcom/google/protobuf/x1;

    move-result-object p0

    :try_start_e
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/x1;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_e
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_e} :catch_2b
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_e .. :try_end_e} :catch_2a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_29

    invoke-virtual {p0}, Lcom/google/protobuf/x1;->c()Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object p0

    return-object p0

    :catch_29
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/x1;->c()Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_2a
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/x1;->c()Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_2b
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/x1;->c()Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_f
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/google/protobuf/v1;

    move-result-object p0

    :try_start_f
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v1;->n(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_f
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_f} :catch_2e
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_f .. :try_end_f} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2c

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->c()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0

    return-object p0

    :catch_2c
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->c()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_2d
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->c()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_2e
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/v1;->c()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_10
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/google/protobuf/r1;

    move-result-object p0

    :try_start_10
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/r1;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_10
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_10} :catch_31
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_10 .. :try_end_10} :catch_30
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2f

    invoke-virtual {p0}, Lcom/google/protobuf/r1;->i()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p0

    return-object p0

    :catch_2f
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/r1;->i()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_30
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/r1;->i()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_31
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/r1;->i()Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_11
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/google/protobuf/n1;

    move-result-object p0

    :try_start_11
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/n1;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_11
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_11} :catch_34
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_11 .. :try_end_11} :catch_33
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_32

    invoke-virtual {p0}, Lcom/google/protobuf/n1;->c()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    return-object p0

    :catch_32
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/n1;->c()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_33
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/n1;->c()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_34
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/n1;->c()Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_12
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$ExtensionRangeOptions;->newBuilder()Lcom/google/protobuf/l1;

    move-result-object p0

    :try_start_12
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/l1;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_12
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_12 .. :try_end_12} :catch_37
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_12 .. :try_end_12} :catch_36
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_35

    invoke-virtual {p0}, Lcom/google/protobuf/l1;->i()Lcom/google/protobuf/DescriptorProtos$ExtensionRangeOptions;

    move-result-object p0

    return-object p0

    :catch_35
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/l1;->i()Lcom/google/protobuf/DescriptorProtos$ExtensionRangeOptions;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_36
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/l1;->i()Lcom/google/protobuf/DescriptorProtos$ExtensionRangeOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_37
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/l1;->i()Lcom/google/protobuf/DescriptorProtos$ExtensionRangeOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_13
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->newBuilder()Lcom/google/protobuf/j1;

    move-result-object p0

    :try_start_13
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/j1;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_13
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_13 .. :try_end_13} :catch_3a
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_13 .. :try_end_13} :catch_39
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_38

    invoke-virtual {p0}, Lcom/google/protobuf/j1;->i()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object p0

    return-object p0

    :catch_38
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/j1;->i()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_39
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/j1;->i()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_3a
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/j1;->i()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_14
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/h1;

    move-result-object p0

    :try_start_14
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/h1;->f(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_14
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_14 .. :try_end_14} :catch_3d
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_14 .. :try_end_14} :catch_3c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3b

    invoke-virtual {p0}, Lcom/google/protobuf/h1;->c()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p0

    return-object p0

    :catch_3b
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/h1;->c()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_3c
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/h1;->c()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_3d
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/h1;->c()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_15
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->newBuilder()Lcom/google/protobuf/f1;

    move-result-object p0

    :try_start_15
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f1;->k(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_15
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_15 .. :try_end_15} :catch_40
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_15 .. :try_end_15} :catch_3f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3e

    invoke-virtual {p0}, Lcom/google/protobuf/f1;->i()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p0

    return-object p0

    :catch_3e
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/f1;->i()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_3f
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/f1;->i()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_40
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/f1;->i()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_16
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/google/protobuf/a1;

    move-result-object p0

    :try_start_16
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/a1;->h(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_16
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_16 .. :try_end_16} :catch_43
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_16 .. :try_end_16} :catch_42
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_41

    invoke-virtual {p0}, Lcom/google/protobuf/a1;->c()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p0

    return-object p0

    :catch_41
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/a1;->c()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_42
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/a1;->c()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_43
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/a1;->c()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_17
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/google/protobuf/s0;

    move-result-object p0

    :try_start_17
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/s0;->n(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_17
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_17 .. :try_end_17} :catch_46
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_17 .. :try_end_17} :catch_45
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_44

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->c()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p0

    return-object p0

    :catch_44
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->c()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_45
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->c()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_46
    move-exception p1

    invoke-virtual {p0}, Lcom/google/protobuf/s0;->c()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :goto_0
    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$Version;->newBuilder()Lu5/d;

    move-result-object p0

    :try_start_18
    invoke-virtual {p0, p1, p2}, Lu5/d;->e(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V
    :try_end_18
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_18 .. :try_end_18} :catch_49
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_18 .. :try_end_18} :catch_48
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_47

    invoke-virtual {p0}, Lu5/d;->c()Lcom/google/protobuf/compiler/PluginProtos$Version;

    move-result-object p0

    return-object p0

    :catch_47
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p0}, Lu5/d;->c()Lcom/google/protobuf/compiler/PluginProtos$Version;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_48
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-virtual {p0}, Lu5/d;->c()Lcom/google/protobuf/compiler/PluginProtos$Version;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_49
    move-exception p1

    invoke-virtual {p0}, Lu5/d;->c()Lcom/google/protobuf/compiler/PluginProtos$Version;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
