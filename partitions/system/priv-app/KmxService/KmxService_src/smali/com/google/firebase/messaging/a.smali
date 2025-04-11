.class public final Lcom/google/firebase/messaging/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/c;


# static fields
.field public static final a:Lcom/google/firebase/messaging/a;

.field public static final b:Lc5/b;

.field public static final c:Lc5/b;

.field public static final d:Lc5/b;

.field public static final e:Lc5/b;

.field public static final f:Lc5/b;

.field public static final g:Lc5/b;

.field public static final h:Lc5/b;

.field public static final i:Lc5/b;

.field public static final j:Lc5/b;

.field public static final k:Lc5/b;

.field public static final l:Lc5/b;

.field public static final m:Lc5/b;

.field public static final n:Lc5/b;

.field public static final o:Lc5/b;

.field public static final p:Lc5/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/firebase/messaging/a;

    invoke-direct {v0}, Lcom/google/firebase/messaging/a;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/a;->a:Lcom/google/firebase/messaging/a;

    const-string v0, "projectNumber"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;->DEFAULT:Lcom/google/firebase/encoders/proto/Protobuf$IntEncoding;

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->b:Lc5/b;

    const-string v0, "messageId"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->c:Lc5/b;

    const-string v0, "instanceId"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->d:Lc5/b;

    const-string v0, "messageType"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->e:Lc5/b;

    const-string v0, "sdkPlatform"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->f:Lc5/b;

    const-string v0, "packageName"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->g:Lc5/b;

    const-string v0, "collapseKey"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/4 v2, 0x7

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->h:Lc5/b;

    const-string v0, "priority"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->i:Lc5/b;

    const-string v0, "ttl"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/16 v2, 0x9

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->j:Lc5/b;

    const-string v0, "topic"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->k:Lc5/b;

    const-string v0, "bulkId"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/16 v2, 0xb

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->l:Lc5/b;

    const-string v0, "event"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/16 v2, 0xc

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->m:Lc5/b;

    const-string v0, "analyticsLabel"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/16 v2, 0xd

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->n:Lc5/b;

    const-string v0, "campaignId"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/16 v2, 0xe

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->o:Lc5/b;

    const-string v0, "composerLabel"

    invoke-static {v0}, Lc5/b;->a(Ljava/lang/String;)Lp1/c;

    move-result-object v0

    const/16 v2, 0xf

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/n;->c(ILcom/google/firebase/encoders/proto/Protobuf$IntEncoding;Lp1/c;)Lc5/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a;->p:Lc5/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lo5/a;

    check-cast p2, Lc5/d;

    iget-wide v0, p1, Lo5/a;->a:J

    sget-object p0, Lcom/google/firebase/messaging/a;->b:Lc5/b;

    invoke-interface {p2, p0, v0, v1}, Lc5/d;->b(Lc5/b;J)Lc5/d;

    sget-object p0, Lcom/google/firebase/messaging/a;->c:Lc5/b;

    iget-object v0, p1, Lo5/a;->b:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Lcom/google/firebase/messaging/a;->d:Lc5/b;

    iget-object v0, p1, Lo5/a;->c:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Lcom/google/firebase/messaging/a;->e:Lc5/b;

    iget-object v0, p1, Lo5/a;->d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Lcom/google/firebase/messaging/a;->f:Lc5/b;

    iget-object v0, p1, Lo5/a;->e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Lcom/google/firebase/messaging/a;->g:Lc5/b;

    iget-object v0, p1, Lo5/a;->f:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Lcom/google/firebase/messaging/a;->h:Lc5/b;

    iget-object v0, p1, Lo5/a;->g:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Lcom/google/firebase/messaging/a;->i:Lc5/b;

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Lc5/d;->c(Lc5/b;I)Lc5/d;

    sget-object p0, Lcom/google/firebase/messaging/a;->j:Lc5/b;

    iget v0, p1, Lo5/a;->h:I

    invoke-interface {p2, p0, v0}, Lc5/d;->c(Lc5/b;I)Lc5/d;

    sget-object p0, Lcom/google/firebase/messaging/a;->k:Lc5/b;

    iget-object v0, p1, Lo5/a;->i:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Lcom/google/firebase/messaging/a;->l:Lc5/b;

    const-wide/16 v0, 0x0

    invoke-interface {p2, p0, v0, v1}, Lc5/d;->b(Lc5/b;J)Lc5/d;

    sget-object p0, Lcom/google/firebase/messaging/a;->m:Lc5/b;

    iget-object v2, p1, Lo5/a;->j:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    invoke-interface {p2, p0, v2}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Lcom/google/firebase/messaging/a;->n:Lc5/b;

    iget-object v2, p1, Lo5/a;->k:Ljava/lang/String;

    invoke-interface {p2, p0, v2}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    sget-object p0, Lcom/google/firebase/messaging/a;->o:Lc5/b;

    invoke-interface {p2, p0, v0, v1}, Lc5/d;->b(Lc5/b;J)Lc5/d;

    sget-object p0, Lcom/google/firebase/messaging/a;->p:Lc5/b;

    iget-object p1, p1, Lo5/a;->l:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lc5/d;->a(Lc5/b;Ljava/lang/Object;)Lc5/d;

    return-void
.end method
