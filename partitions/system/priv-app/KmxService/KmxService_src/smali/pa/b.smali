.class public final synthetic Lpa/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lpa/c;

.field public final synthetic b:Lpa/e;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lpa/c;Lpa/e;Ljava/lang/String;Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa/b;->a:Lpa/c;

    iput-object p2, p0, Lpa/b;->b:Lpa/e;

    iput-object p3, p0, Lpa/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lpa/b;->d:Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;

    iput-wide p5, p0, Lpa/b;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lpa/b;->a:Lpa/c;

    iget-object v1, p0, Lpa/b;->b:Lpa/e;

    iget-object v2, p0, Lpa/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lpa/b;->d:Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;

    iget-wide v4, p0, Lpa/b;->e:J

    invoke-static/range {v0 .. v5}, Lpa/c;->a(Lpa/c;Lpa/e;Ljava/lang/String;Lcom/samsung/security/fabric/chain/core/data/event/EventProto$Message;J)V

    return-void
.end method
