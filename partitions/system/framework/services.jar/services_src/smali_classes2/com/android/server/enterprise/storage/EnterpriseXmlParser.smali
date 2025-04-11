.class public Lcom/android/server/enterprise/storage/EnterpriseXmlParser;
.super Ljava/lang/Object;
.source "EnterpriseXmlParser.java"


# instance fields
.field public final mCallback:Lcom/android/server/enterprise/storage/TableCallback;

.field public final mParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method public constructor <init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/enterprise/storage/TableCallback;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 66
    iput-object p2, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mCallback:Lcom/android/server/enterprise/storage/TableCallback;

    return-void
.end method


# virtual methods
.method public final getType(Ljava/lang/String;)Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .locals 0

    if-nez p1, :cond_0

    .line 117
    sget-object p0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object p0

    :cond_0
    const-string p0, "int"

    .line 118
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 119
    sget-object p0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object p0

    :cond_1
    const-string/jumbo p0, "text"

    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 121
    sget-object p0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object p0

    :cond_2
    const-string/jumbo p0, "numeric"

    .line 122
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 123
    sget-object p0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object p0

    :cond_3
    const-string/jumbo p0, "real"

    .line 124
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 125
    sget-object p0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object p0

    .line 128
    :cond_4
    sget-object p0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object p0
.end method

.method public final isPrimaryKey(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string/jumbo p0, "true"

    .line 111
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parseXML()V
    .locals 11

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    const-string/jumbo v4, "table"

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 96
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mCallback:Lcom/android/server/enterprise/storage/TableCallback;

    invoke-interface {v0, v2}, Lcom/android/server/enterprise/storage/TableCallback;->onTableFound(Lcom/android/server/enterprise/storage/Table;)V

    move-object v2, v1

    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v4, "name"

    if-eqz v3, :cond_2

    .line 78
    :try_start_2
    new-instance v2, Lcom/android/server/enterprise/storage/Table;

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v3, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string v6, "foreignrefertable"

    .line 79
    invoke-interface {v5, v1, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string v7, "foreignreferkey"

    .line 80
    invoke-interface {v6, v1, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string v8, "foreignkeyname"

    .line 81
    invoke-interface {v7, v1, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/android/server/enterprise/storage/Table;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v3, "column"

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 84
    new-instance v0, Lcom/android/server/enterprise/storage/Column;

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 85
    invoke-interface {v3, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v4, "type"

    .line 86
    invoke-interface {v3, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->getType(Ljava/lang/String;)Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    move-result-object v7

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v4, "primarykey"

    .line 87
    invoke-interface {v3, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->isPrimaryKey(Ljava/lang/String;)Z

    move-result v8

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v4, "properties"

    .line 88
    invoke-interface {v3, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string v4, "default"

    .line 89
    invoke-interface {v3, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/storage/Column;-><init>(Ljava/lang/String;Lcom/android/server/enterprise/storage/Column$DATA_TYPE;ZLjava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/storage/Table;->addColumn(Lcom/android/server/enterprise/storage/Column;)V

    .line 102
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    const-string v0, "EnterpriseXmlParser"

    const-string/jumbo v1, "parseXML EX:"

    .line 106
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-void
.end method
